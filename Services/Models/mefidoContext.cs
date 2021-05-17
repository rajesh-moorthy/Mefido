using Microsoft.EntityFrameworkCore;


namespace MefidoServices.Models
{
    public partial class MefidoContext : DbContext
    {
        public MefidoContext()
        {
        }

        public MefidoContext(DbContextOptions<MefidoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Businessenquiries> Businessenquiries { get; set; }
        public virtual DbSet<Caseimages> Caseimages { get; set; }
        public virtual DbSet<Casenotes> Casenotes { get; set; }
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Country> Country { get; set; }
        public virtual DbSet<Doctorbranches> Doctorbranches { get; set; }
        public virtual DbSet<Doctorprofile> Doctorprofile { get; set; }
        public virtual DbSet<Patient> Patient { get; set; }
        public virtual DbSet<Prescription> Prescription { get; set; }
        public virtual DbSet<State> State { get; set; }

        public virtual DbSet<Log> logs { get; set; }

        public virtual DbSet<UserAuthentication> userAuth { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=mefido.giftwinner.co.in;Database=MefidoDoc;User Id=mefidoc;Password=mefidoc2019;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.6-servicing-10079");

            modelBuilder.Entity<Businessenquiries>(entity =>
            {
                entity.HasKey(e => e.EnquiryId);

                entity.ToTable("businessenquiries", "dbo");

                entity.Property(e => e.EnquiryId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.CityId).HasColumnType("int(11)");

                entity.Property(e => e.DateofEnq).HasColumnType("datetime(6)");

                entity.Property(e => e.DoctorName)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.EmailId)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.EnquiryStatus)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.EnquiryType)
                    .HasMaxLength(25)
                    .IsUnicode(false);

                entity.Property(e => e.MobileNumber)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.RegistrationId)
                    .IsRequired()
                    .HasMaxLength(12)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Caseimages>(entity =>
            {
                entity.HasKey(e => e.CaseImageId);

                entity.ToTable("caseimages", "dbo");

                entity.Property(e => e.CaseImageId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.CaseImage).HasColumnType("mediumblob");

                entity.Property(e => e.CaseNoteId)
                    .HasMaxLength(45)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Casenotes>(entity =>
            {
                entity.HasKey(e => e.CaseNoteId);

                entity.ToTable("casenotes", "dbo");

                entity.Property(e => e.CaseNoteId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.CaseNotes1)
                    .HasColumnName("CaseNotes")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.DoctorId).HasColumnType("int(11)");

                entity.Property(e => e.PatientId).HasColumnType("int(11)");
            });

            modelBuilder.Entity<City>(entity =>
            {
                entity.ToTable("City", "dbo");

                entity.Property(e => e.CityId)
                    .HasColumnName("CityID")
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Active)
                    .HasColumnType("char(1)")
                    .HasDefaultValueSql("N");

                entity.Property(e => e.CityName)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.Cord1)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.Cord2)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.CountryCode)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PostalCode)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.State)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.StateID)
                    .IsRequired()
                    .HasColumnName("StateID")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.Town)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.Village)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Country>(entity =>
            {
                entity.ToTable("country", "dbo");

                entity.Property(e => e.CountryId)
                    .HasColumnName("CountryID")
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Active)
                    .HasColumnType("char(1)")
                    .HasDefaultValueSql("N");

                entity.Property(e => e.CountryCode)
                    .IsRequired()
                    .HasMaxLength(2)
                    .IsUnicode(false);

                entity.Property(e => e.CountryName)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Doctorbranches>(entity =>
            {
                entity.HasKey(e => e.BranchId);

                entity.ToTable("doctorbranches", "dbo");

                entity.Property(e => e.BranchId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Active).HasColumnType("int(11)");

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.City).HasColumnType("int(11)");

                entity.Property(e => e.DocProfileId).HasColumnType("int(11)");

                entity.Property(e => e.RegistrationId)
                    .IsRequired()
                    .HasMaxLength(15)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Doctorprofile>(entity =>
            {
                entity.HasKey(e => e.DocProfileId);

                entity.ToTable("doctorprofile", "dbo");

                entity.Property(e => e.DocProfileId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Active).HasColumnType("int(11)");

                entity.Property(e => e.FirstName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.MiddleName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.LastName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.EmailId)
                    .HasMaxLength(50)
                    .IsUnicode(false);


                entity.Property(e => e.Mobile)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Patient>(entity =>
            {
                entity.ToTable("patient", "dbo");

                entity.Property(e => e.PatientId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.CityId).HasColumnType("int(11)");

                entity.Property(e => e.CountryCode)
                    .IsRequired()
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedOn).HasColumnType("date");

                entity.Property(e => e.EmailId)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .HasColumnName("FirstName")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.LastName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.MiddleName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.MobileNumber)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.PatientPhoto).HasColumnType("mediumblob");
            });



            modelBuilder.Entity<Prescription>(entity =>
            {
                entity.ToTable("prescription", "dbo");

                entity.Property(e => e.PrescriptionId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Afternoon).HasColumnType("int(11)");

                entity.Property(e => e.Bfaf)
                    .HasColumnName("BFAF")
                    .HasColumnType("char(1)");

                entity.Property(e => e.Evening).HasColumnType("int(11)");

                entity.Property(e => e.MedicineName)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Morning).HasColumnType("int(11)");

                entity.Property(e => e.Night).HasColumnType("int(11)");

                entity.Property(e => e.PatientId).HasColumnType("int(11)");

                entity.Property(e => e.PrescDate).HasColumnType("datetime(6)");

                entity.Property(e => e.VisitId).HasColumnType("int(11)");
            });

            modelBuilder.Entity<State>(entity =>
            {
                entity.ToTable("state", "dbo");

                entity.HasIndex(e => e.CountryId)
                    .HasName("FK_State_Country");

                entity.Property(e => e.StateId)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever();

                entity.Property(e => e.Active)
                    .HasColumnType("char(1)")
                    .HasDefaultValueSql("N");

                entity.Property(e => e.CountryId)
                    .HasColumnName("CountryID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.StateCode)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.StateName)
                    .IsRequired()
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.State)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_State_Country");
            });

            modelBuilder.Entity<Log>(entity =>
            {

                entity.ToTable("log", "dbo");

                entity.Property(e => e.LogId)
                    .HasColumnName("LogId")
                    .HasColumnType("int(11)")
                    .ValueGeneratedOnAdd();

                entity.Property(e => e.LogDescription)
                    .IsRequired()
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.LogDate).HasColumnType("date");

            });

            modelBuilder.Entity<UserAuthentication>(entity =>
            {

                entity.ToTable("userauthentication", "dbo");

                entity.Property(e => e.AuthId)
                    .HasColumnName("AuthId")
                    .HasColumnType("int(11)")
                    .ValueGeneratedOnAdd();

                entity.Property(e => e.UserName)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.IsUserLocked)
                   .HasColumnName("IsUserLocked")
                   .HasColumnType("int(11)");

                entity.Property(e => e.LastLogin).HasColumnType("date");

            });


        }
    }
}
