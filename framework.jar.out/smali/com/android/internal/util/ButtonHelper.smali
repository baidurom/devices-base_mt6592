.class public Lcom/android/internal/util/ButtonHelper;
.super Ljava/lang/Object;
.source "ButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ButtonHelper$1;,
        Lcom/android/internal/util/ButtonHelper$ButtonConfig;,
        Lcom/android/internal/util/ButtonHelper$Action;,
        Lcom/android/internal/util/ButtonHelper$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_DELIMITER:Ljava/lang/String; = "|"

.field public static final DISABLE_POWER_MENU_WHEN_LOCK:Ljava/lang/String; = "disable_power_menu_when_lock"

.field public static HARDWARE_KEY_CONFIG:Ljava/lang/String; = null

.field public static final HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String; = null

.field public static HARDWARE_KEY_SIZE:I = 0x0

.field public static final NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String; = null

.field public static NAV_BUTTON_CONFIG:Ljava/lang/String; = null

.field private static final PKG_SYSTEM_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PKG_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ButtonHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_SIZE:I

    .line 87
    const-string v0, "hardware_key_config"

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->VoiceAssist:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "nav_button_config"

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Back:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Home:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getHardwareKeyLongPressAction(Landroid/content/Context;)[Lcom/android/internal/util/ButtonHelper$Action;
    .locals 3
    .parameter "context"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String;

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/ButtonConfigHelper;->parseHardwareKeyConfigValues(Ljava/lang/String;)[Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v2

    return-object v2
.end method

.method public static getIconForNavBarButton(Landroid/content/Context;Lcom/android/internal/util/ButtonHelper$Action;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"
    .parameter "action"
    .parameter "isSystemUI"

    .prologue
    const/4 v5, 0x0

    .line 192
    const-string v6, "ButtonHelper"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const-string v6, "ButtonHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIconForNavBarButton action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    const/4 v3, -0x1

    .line 196
    .local v3, resId:I
    const/4 v0, 0x0

    .line 197
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 223
    :goto_0
    return-object v5

    .line 204
    :cond_1
    if-eqz p2, :cond_4

    :try_start_0
    const-string v6, "com.android.systemui"

    :goto_1
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 210
    .local v4, systemUiResources:Landroid/content/res/Resources;
    iget-object v5, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v6, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/ButtonHelper$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    :try_start_1
    iget-object v5, p1, Lcom/android/internal/util/ButtonHelper$Action;->args:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 218
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 219
    invoke-static {v4, p1, p2}, Lcom/android/internal/util/ButtonHelper;->getIconResIdForNavBarButton(Landroid/content/res/Resources;Lcom/android/internal/util/ButtonHelper$Action;Z)I

    move-result v3

    .line 220
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    move-object v5, v0

    .line 223
    goto :goto_0

    .line 204
    .end local v4           #systemUiResources:Landroid/content/res/Resources;
    :cond_4
    :try_start_2
    const-string v6, "com.android.settings"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ButtonHelper"

    const-string v7, "can\'t access systemui resources"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #systemUiResources:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 214
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getIconResIdForNavBarButton(Landroid/content/res/Resources;Lcom/android/internal/util/ButtonHelper$Action;Z)I
    .locals 3
    .parameter "systemUiResources"
    .parameter "action"
    .parameter "isSystemUI"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, resName:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/util/ButtonHelper$1;->$SwitchMap$com$android$internal$util$ButtonHelper$ActionType:[I

    iget-object v2, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v2}, Lcom/android/internal/util/ButtonHelper$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    const-string v0, "ic_sysbar_home"

    .line 188
    :goto_0
    const-string v2, "drawable"

    if-eqz p2, :cond_0

    const-string v1, "com.android.systemui"

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 158
    :pswitch_0
    const-string v0, "ic_sysbar_back"

    .line 159
    goto :goto_0

    .line 161
    :pswitch_1
    const-string v0, "ic_sysbar_home"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_2
    const-string v0, "ic_sysbar_recent"

    .line 165
    goto :goto_0

    .line 167
    :pswitch_3
    const-string v0, "ic_sysbar_last_app"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_4
    const-string v0, "ic_sysbar_kill_app"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_5
    const-string v0, "ic_sysbar_notification"

    .line 174
    goto :goto_0

    .line 176
    :pswitch_6
    const-string v0, "ic_sysbar_power_menu"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_7
    const-string v0, "ic_sysbar_search"

    .line 180
    goto :goto_0

    .line 182
    :pswitch_8
    const-string v0, "ic_sysbar_voice_assist"

    .line 183
    goto :goto_0

    .line 188
    :cond_0
    const-string v1, "com.android.settings"

    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getNavBarButtonConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 135
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    :cond_0
    sget-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    .line 140
    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/ButtonConfigHelper;->parseNavButtonConfigValues(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static setHardwareKeyLongPressAction(Landroid/content/Context;[Lcom/android/internal/util/ButtonHelper$Action;)V
    .locals 3
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ButtonConfigHelper;->makeHardwareKeyConfigValues([Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    return-void
.end method

.method public static setNavBarButtonConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "reset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, configs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/ButtonHelper$ButtonConfig;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 146
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ButtonConfigHelper;->makeNavButtonConfigValues(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
