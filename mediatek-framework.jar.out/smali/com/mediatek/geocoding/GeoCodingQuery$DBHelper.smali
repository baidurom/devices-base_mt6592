.class public Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/geocoding/GeoCodingQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final DATABASE_VERSION:I = 0x4


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/mediatek/geocoding/GeoCodingQuery;


# direct methods
.method public constructor <init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->this$0:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 194
    const-string v0, "/system/etc/geocoding.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 195
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 199
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 203
    return-void
.end method

.method public openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v0, "/system/etc/geocoding.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 207
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
