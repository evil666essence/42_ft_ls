NAME ?= ft_ls

CFLAGS ?= -Wall -Wextra -Werror

SRC := \
	btree/btree_add.c \
	btree/btree_clean.c \
	btree/btree_create.c \
	btree/btree_each.c \
	main.c \
	filesystem_hidden.c \
	filesystem_initargs.c \
	filesystem_readargs.c \
	filesystem_readtree_directory.c \
	filesystem_readtree_short.c \
	filesystem_savetree.c \
	ft_ls_readpath.c \
	ft_ls_error.c \
	ft_ls_long_format.c \
	ft_ls_itoan.c \
	printer/printer_bin.c \
	printer/printer_char.c \
	printer/printer_endl.c \
	printer/printer_flush.c \
	printer/printer_init.c \
	printer/printer_int.c \
	printer/printer_long.c \
	printer/printer_str.c \
	printer/printer_uint.c \
	printer/printer_ulong.c \
	sort_alpha.c \
	sort_alpha_handle.c \
	sort_alpha_reverse.c \
	sort_func.c \
	sort_mtime.c \
	sort_mtime_reverse.c

OBJ := $(addprefix src/,$(SRC:.c=.o))

CFLAGS += -MMD -MP -Ilibft

.PHONY: all clean fclean re libft

all: $(NAME)

$(NAME): $(OBJ) libft/libft.a
	$(CC) $(CFLAGS) -o $@ $^

-include $(OBJ:.o=.d)

clean:
	$(RM) $(OBJ) $(OBJ:.o=.d)

fclean:
	$(MAKE) clean
	$(MAKE) -C libft fclean
	$(RM) $(NAME)

re:
	$(MAKE) fclean
	$(MAKE) all

libft libft/libft.a:
	$(MAKE) -C libft

.syntastic_c_config:
	echo "-Ilibft" > $@
