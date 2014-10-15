.class Landroid/app/ApplicationPackageManager$BaiduInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static multiTheme_getDrawableLocal(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "appInfo"
    .parameter "packageName"
    .parameter "resid"
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq p2, v3, :cond_0

    invoke-static {p1}, Landroid/content/ThemeDefine;->isSpecialPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v2, sb:Ljava/lang/StringBuffer;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "icons"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_1
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v1           #file:Ljava/io/File;
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    return-object v0
.end method
