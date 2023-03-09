-- CreateTable
CREATE TABLE "People" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "height" TEXT,
    "mass" TEXT,
    "hair_color" TEXT,
    "skin_color" TEXT,
    "eye_color" TEXT,
    "birth_year" TEXT,
    "gender" TEXT,
    "homeworld" TEXT,
    "films" TEXT[],
    "species" TEXT[],
    "vehicles" TEXT[],
    "starships" TEXT[],
    "created" TIMESTAMP(3) NOT NULL,
    "edited" TIMESTAMP(3) NOT NULL,
    "url" TEXT NOT NULL,

    CONSTRAINT "People_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Planets" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "rotation_period" TEXT,
    "orbital_period" TEXT,
    "diameter" TEXT,
    "climate" TEXT,
    "gravity" TEXT,
    "terrain" TEXT,
    "surface_water" TEXT,
    "population" TEXT,
    "residents" TEXT[],
    "films" TEXT[],
    "created" TIMESTAMP(3) NOT NULL,
    "edited" TIMESTAMP(3) NOT NULL,
    "url" TEXT NOT NULL,

    CONSTRAINT "Planets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Species" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "classification" TEXT,
    "designation" TEXT,
    "average_height" TEXT,
    "skin_colors" TEXT,
    "hair_colors" TEXT,
    "eye_colors" TEXT,
    "average_lifespan" TEXT,
    "homeworld" TEXT,
    "language" TEXT,
    "people" TEXT[],
    "films" TEXT[],
    "created" TIMESTAMP(3) NOT NULL,
    "edited" TIMESTAMP(3) NOT NULL,
    "url" TEXT NOT NULL,

    CONSTRAINT "Species_pkey" PRIMARY KEY ("id")
);
