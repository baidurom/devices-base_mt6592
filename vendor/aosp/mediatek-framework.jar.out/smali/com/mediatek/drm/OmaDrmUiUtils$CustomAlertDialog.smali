.class Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
.super Landroid/app/AlertDialog;
.source "OmaDrmUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomAlertDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const/4 v0, 0x0

    .line 1035
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1029
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1030
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 1031
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    .line 1032
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mContext:Landroid/content/Context;

    .line 1036
    iput-object p2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    .line 1037
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mContext:Landroid/content/Context;

    .line 1039
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1057
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1074
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method


# virtual methods
.method public final getCreatorContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1079
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 1084
    return-void
.end method
