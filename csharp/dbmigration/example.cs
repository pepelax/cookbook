public class ControllerContextFactory : IDesignTimeDbContextFactory<ControllerContext>
{
    public ControllerContext CreateDbContext(string[] args)
    {
        return CreateDbContext();
    }

    public static ControllerContext CreateDbContext()
    {
        var options = GetOptions();
        return new ControllerContext(options);
    }

    public static DbContextOptions<ControllerContext> GetOptions()
    {
        var connectionString = GetConnectionString();
        var optionsBuilder = new DbContextOptionsBuilder<ControllerContext>();
        optionsBuilder.LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Warning);
        optionsBuilder.UseSqlServer(connectionString);

        return optionsBuilder.Options;
    }

    public static string GetConnectionString()
    {
        var conn = Environment.GetEnvironmentVariable(SwapsHedge.Constants.EnvDbConnection);
        if (conn is null)
            conn = SwapsHedge.Constants.DefaultDbConnection;
        conn = conn.CleanEnv();
        return conn;
    }
}