.class final Lcom/qihoo/util/QHDialog$1;
.super Ljava/lang/Object;
.source "QHDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo/util/QHDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/qihoo/util/QHDialog$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/qihoo/util/QHDialog$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/qihoo/util/QHDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/qihoo/util/QHDialog$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/qihoo/util/QHDialog$1$1;

    invoke-direct {v2, p0}, Lcom/qihoo/util/QHDialog$1$1;-><init>(Lcom/qihoo/util/QHDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 32
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 33
    return-void
.end method
