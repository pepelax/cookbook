// https://learn.microsoft.com/ru-ru/dotnet/core/tutorials/with-visual-studio-code?pivots=dotnet-6-0
// dotnet new console --framework net6.0

// See https://aka.ms/new-console-template for more information
// https://learn.microsoft.com/ru-ru/dotnet/csharp/fundamentals/program-structure/top-level-statements

using System.Text;

// dotnet add package RabbitMQ.Client
// using RabbitMQ.Client;

/*
Console.WriteLine("What is your name?");
var name = Console.ReadLine();
var currentDate = DateTime.Now;
Console.WriteLine($"{Environment.NewLine}Hello, {name}, on {currentDate:d} at {currentDate:t}!");
Console.Write($"{Environment.NewLine}Press any key to exit...");
Console.ReadKey(true);
*/

// ------
// Arguments example
if (args.Length > 0)
{
    foreach (var arg in args)
    {
        Console.WriteLine($"Argument=={arg}");
    }
}
else
{
    Console.WriteLine("No arguments!");
}

// ------
// String builder
StringBuilder builder = new();
builder.AppendLine("String");
builder.AppendLine("Builder!");

Console.WriteLine(builder.ToString());

// asyncio
Console.WriteLine("Async ");
await Task.Delay(2000);
Console.WriteLine("IO!");

var result = await Task.Run(MyClass.Test);
Console.WriteLine(result);

// namespaces should be after top level operators
MyClass.TestMethod();
MyNamespace.MyClass.MyMethod();

public class MyClass
{
    public static void TestMethod()
    {
        Console.WriteLine("MyClass: Hello World!");
    }

    public static long Test()
    {
        var sum = 0L;
        for (long i = 0; i < 10000000; ++i)
        {
            sum += i;
        }
        Console.WriteLine(sum);
        return sum;
    }
}

namespace MyNamespace
{
    class MyClass
    {
        public static void MyMethod()
        {
            Console.WriteLine("Hello World from MyNamespace.MyClass.MyMethod!");
        }
    }
}