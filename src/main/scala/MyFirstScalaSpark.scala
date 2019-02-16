package com.example
import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.functions._
import org.apache.spark.sql.DataFrame
import java.text.SimpleDateFormat

object MyScalaApp {

  def main(args: Array[String]) {
    val spark = SparkSession.builder
      .appName("MyFirstScalaSpark")
      .getOrCreate()

    val filePath = args(0)
    val data = spark.read
      .option("header", true)
      .option("inferSchema", true)
      .option("timestampFormat", "dd/MM/yyyy")
      .csv(filePath)

    data.printSchema
    data.show

    val orderedData = data.orderBy(desc("Date of Payment"))
    orderedData.explain(true)
    orderedData.show(5)
  }
}
