.class public final enum Lcom/android/internal/util/ButtonHelper$ActionType;
.super Ljava/lang/Enum;
.source "ButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/util/ButtonHelper$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Back:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Home:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum KillApp:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum LastApp:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Notification:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Null:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum PowerMenu:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum Search:Lcom/android/internal/util/ButtonHelper$ActionType;

.field public static final enum VoiceAssist:Lcom/android/internal/util/ButtonHelper$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Null"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 23
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Back"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Back:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 24
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Home"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Home:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 25
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Recent"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 26
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "LastApp"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->LastApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 27
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "KillApp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->KillApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 28
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Notification"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Notification:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 29
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "PowerMenu"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->PowerMenu:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 30
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "Search"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->Search:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 31
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "VoiceAssist"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->VoiceAssist:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 32
    new-instance v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    const-string v1, "CustomApp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/ButtonHelper$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Back:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Home:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->LastApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->KillApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->Notification:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->PowerMenu:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->Search:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->VoiceAssist:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->$VALUES:[Lcom/android/internal/util/ButtonHelper$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/util/ButtonHelper$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ButtonHelper$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/util/ButtonHelper$ActionType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/util/ButtonHelper$ActionType;->$VALUES:[Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0}, [Lcom/android/internal/util/ButtonHelper$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/ButtonHelper$ActionType;

    return-object v0
.end method
