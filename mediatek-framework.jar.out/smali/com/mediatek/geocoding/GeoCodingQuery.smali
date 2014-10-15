.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"

# interfaces
.implements Lcom/mediatek/common/geocoding/IGeoCodingQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 64
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 185
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 75
    const-string v0, "GeoCodingQuery"

    const-string v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 164
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method


# virtual methods
.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "number"

    .prologue
    .line 87
    const-string v13, ""

    .line 88
    .local v13, returnValue:Ljava/lang/String;
    const/16 v10, 0xb

    .line 89
    .local v10, numberValidLength:I
    const/4 v8, 0x4

    .line 90
    .local v8, numberTailLength:I
    const-string v3, ""

    .line 92
    .local v3, countryIso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 93
    const-string v17, "GeoCodingQuery"

    const-string v18, "Database is not opened !"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v13

    .line 156
    .end local v13           #returnValue:Ljava/lang/String;
    .local v14, returnValue:Ljava/lang/String;
    :goto_0
    return-object v14

    .line 97
    .end local v14           #returnValue:Ljava/lang/String;
    .restart local v13       #returnValue:Ljava/lang/String;
    :cond_0
    const-string v17, "GeoCodingQuery"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "number = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v17, " "

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, queryNumber:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 101
    .local v9, numberTotalLength:I
    if-ge v9, v10, :cond_1

    .line 102
    const-string v17, "GeoCodingQuery"

    const-string v18, "The length of dial number is less than 11 !"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v13

    .line 103
    .end local v13           #returnValue:Ljava/lang/String;
    .restart local v14       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v14           #returnValue:Ljava/lang/String;
    .restart local v13       #returnValue:Ljava/lang/String;
    :cond_1
    const-string v17, "+"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "00"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 108
    :cond_2
    const-string v17, "+86"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "0086"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 109
    const-string v17, "GeoCodingQuery"

    const-string v18, "The dial number is a international number and didn\'t start with +86!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v13

    .line 110
    .end local v13           #returnValue:Ljava/lang/String;
    .restart local v14       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v14           #returnValue:Ljava/lang/String;
    .restart local v13       #returnValue:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "country_detector"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/CountryDetector;

    .line 115
    .local v5, detector:Landroid/location/CountryDetector;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 116
    invoke-virtual {v5}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 119
    :goto_1
    const-string v17, "cn"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 120
    const-string v17, "GeoCodingQuery"

    const-string v18, "The dial number is not at CN!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v13

    .line 121
    .end local v13           #returnValue:Ljava/lang/String;
    .restart local v14       #returnValue:Ljava/lang/String;
    goto/16 :goto_0

    .line 118
    .end local v14           #returnValue:Ljava/lang/String;
    .restart local v13       #returnValue:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 125
    .end local v5           #detector:Landroid/location/CountryDetector;
    :cond_5
    sub-int v16, v9, v10

    .line 126
    .local v16, startIndex:I
    sub-int v6, v9, v8

    .line 127
    .local v6, endIndex:I
    move/from16 v0, v16

    invoke-virtual {v11, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 128
    const-string v17, "GeoCodingQuery"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Query number = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v12, 0x7

    .line 131
    .local v12, queryNumberLength:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v12, :cond_8

    .line 133
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x39

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    :cond_6
    move-object v14, v13

    .line 134
    .end local v13           #returnValue:Ljava/lang/String;
    .restart local v14       #returnValue:Ljava/lang/String;
    goto/16 :goto_0

    .line 131
    .end local v14           #returnValue:Ljava/lang/String;
    .restart local v13       #returnValue:Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 144
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, sqlCmd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 147
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_9

    .line 148
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 152
    :cond_9
    if-eqz v4, :cond_a

    .line 153
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v14, v13

    .line 156
    .end local v13           #returnValue:Ljava/lang/String;
    .restart local v14       #returnValue:Ljava/lang/String;
    goto/16 :goto_0
.end method
