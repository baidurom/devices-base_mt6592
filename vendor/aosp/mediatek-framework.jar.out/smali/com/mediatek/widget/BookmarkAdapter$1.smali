.class Lcom/mediatek/widget/BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "BookmarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/widget/BookmarkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/BookmarkAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mediatek/widget/BookmarkAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkAdapter$1;->this$0:Lcom/mediatek/widget/BookmarkAdapter;

    iput p2, p0, Lcom/mediatek/widget/BookmarkAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter$1;->this$0:Lcom/mediatek/widget/BookmarkAdapter;

    iget v1, p0, Lcom/mediatek/widget/BookmarkAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->remove(I)Ljava/lang/Object;

    .line 154
    return-void
.end method
