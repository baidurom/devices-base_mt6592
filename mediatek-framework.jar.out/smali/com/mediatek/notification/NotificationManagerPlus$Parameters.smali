.class Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/notification/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameters"
.end annotation


# instance fields
.field mCancelHandled:Z

.field mCancelable:Z

.field mContext:Landroid/content/Context;

.field mNegativeButtonHandled:Z

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNeutralButtonHandled:Z

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnFirstShowListener:Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;

.field mOnLastDismissListener:Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;

.field mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mPositiveButtonHandled:Z

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/notification/NotificationManagerPlus$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;-><init>()V

    return-void
.end method
