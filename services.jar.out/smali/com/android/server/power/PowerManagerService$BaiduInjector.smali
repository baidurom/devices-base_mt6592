.class Lcom/android/server/power/PowerManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
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

.method static regitsterButtonLightReceiver(Lcom/android/server/power/PowerManagerService;)V
    .locals 5
    .parameter "service"

    .prologue
    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "button_light_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    #getter for: Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$iget-mSettingsObserver-0db185(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static updateButtonLightLocked(Lcom/android/server/power/PowerManagerService;)V
    .locals 6
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "button_light_off"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, buttonLightOff:I
    if-eqz v1, :cond_0

    #getter for: Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$iget-mLightsService-24a2db(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/LightsService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    .local v0, buttonLight:Lcom/android/server/LightsService$Light;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .end local v0           #buttonLight:Lcom/android/server/LightsService$Light;
    :cond_0
    return-void
.end method
